Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6391FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645786584;
	h=To:Subject:From:Message-Id:Date;
	bh=T/cGWaLBs97TAkQ527cCwEPEoenlI9iaD0jSZVoOu4Q=;
	b=abL7u1jc2wFSPzl5BIYG3sKc2tHptYjpZBzYRlWxgVrx8p5d2/Zw5bTHh+KS9D9k
	KEDccKVkozGp2eM3dgwMgHwGRk7Bcz8rwiD4Dlm1oUw5IjjF30/rUfjfrsBfyLbYI3n
	bz82+MLubrssPK9gvDkqFvx4uKU6gVQVB4XUSt2o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645786584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T/cGWaLBs97TAkQ527cCwEPEoenlI9iaD0jSZVoOu4Q=;
	b=VLIBtIbKTfKB9MOTp0RrSBdq3r04JYJMSaekd4Wuu+qWyIb+IedTHdgip0bzb8D8
	Mvdj+DAcsy/5me2twpR+jjJq9SKXy42pCO4eWErUNu7ZRLI3axNGqi4y6K0oTEqNrLz
	QfIVDpmp/3I+L/A7Cr7APBXBjh/UCTFhBomNyalw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f308656fe-de9d92b3-dcbe-4069-9504-9a4568a8bd94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a130969ab61ad4d28d1b0807ffd6f535c61b068aa2a69540dccf2e8b5e94b604
Date: Fri, 25 Feb 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645786584
