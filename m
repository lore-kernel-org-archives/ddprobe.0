Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C366198
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661013652;
	h=To:Subject:From:Message-Id:Date;
	bh=UsjQgAfQdnQzBjeJVI0o+1IKNI1GzMyDGn28c/a/vyA=;
	b=aJZjjRrpUHmQOlA8mxpQdgntJuIkk+AdeZ0JikoqjbbK78fS9D99jcbw+NWr0sYP
	jdM7vMsBGUhw0A+PJ4dxm1GrUghFNhi219gHp+4R5I9113tkJoCycEz27OIHyIAbiS/
	H6oG0WjOYkIQaAHic5HGCRjxODqst/x6VOpSDtbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661013652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UsjQgAfQdnQzBjeJVI0o+1IKNI1GzMyDGn28c/a/vyA=;
	b=e1PChLw7tBUvbH22Nnf5kpXqpBd2mXmpA1H5CBK7RA72cZX0Znmaqh+nLkh8aZq4
	zodzF+z4is2cDuGNJx7HkfdKCIWExQ1LX3fv/RkRG66eJNwfG8O51gNAEM5rUChZKZK
	P32i/gmB/93jmONHKCxWCxFf769eDiD6VsP731sU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc20f43b-7832ecad-c44a-4718-b133-e4bc8ec090d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8d0d3135d60ee5a505612f1a73d64c2e3253f185263c64c2b40d9b0539444cd
Date: Sat, 20 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661013652
