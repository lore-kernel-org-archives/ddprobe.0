Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F145E7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 19:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656445012;
	h=To:Subject:From:Message-Id:Date;
	bh=F/AKBcQajP5V7OMMceW2kfdrPEkhW3IlQ2dt8BHlfMo=;
	b=V/2SDOUFYW8zcYXgGwHN5UTZiXbhG+sEGS5ovURCFn2GEOY6Gv8b/oph2i/YmdHj
	Ey0yUv2IXITEhPXN42sX/Pn50E086yBbyYei6HE3mLNprAGsmxU+PxydNhlCb0dSuAC
	i3XpkNk6HFPye6PaZLe5yXKMdcvTWjpQ7y7oonHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656445012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F/AKBcQajP5V7OMMceW2kfdrPEkhW3IlQ2dt8BHlfMo=;
	b=jDlsnXMaPVZjwHpCJfe/LsGmM0DR7fpbJUSOd7VNotL0WbrONnw7TeMyGRLUkCbC
	jXV4qP2QX6Q6wiYz2L/4YXNIJFj0vPokxELh+YPyJFTt1o8GPvtyKx9yqH5e7thJXhS
	b3v3/O8wpmVds9p7FHxuvTFqgQIk3452iXCpEx4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181abd10978-a4581592-fc69-4b06-9139-62722a70748d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c1bcd652a87e906f3581787646569a9dab4ba48db27224879266eb08156b443
Date: Tue, 28 Jun 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656445012
