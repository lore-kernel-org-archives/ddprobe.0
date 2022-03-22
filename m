Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45E1A54
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647948684;
	h=To:Subject:From:Message-Id:Date;
	bh=RkJOhTZPksOabwSxmXYfgITVPqQYs0dv0GIOIbjlF9U=;
	b=MpuonktiN622T4CZWNMsL/5pMyorlMtj3k5igSaEdm8KBC3chXzUcbPMoaQztZli
	2M/6vsiPH5Zaly+IhphOIhDTcif58hNYvr/8IPzTYImNQgtJqBVjNwk1fzqfrKy+aP+
	en/BE8AFQBe23Fc4+iouXNEbOTVNC0tNtciOeZdo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647948684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RkJOhTZPksOabwSxmXYfgITVPqQYs0dv0GIOIbjlF9U=;
	b=Gjv6tzeK+6AitghwtFcIvlOAqmAiArff+KWMuRXyaeWP6ufjogFYmTE8iL2DiYQ3
	Xt0qXa1TIirTwLg2M9iTcaBdR0mU4m3ah0BOx70EBfrvSzU8genV7R8WXINRz7RwPAE
	gz+RflTYC9Z+Ob8O0S4gAeiVBU+x3wbA/Q5/5Av4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1655ddb-608fa363-c164-4622-af2e-775a41f48bb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 012c2e7dd495d2a1d3aa70bcced7dd3b4430264c3ac7e972a3c063db2b9b5b89
Date: Tue, 22 Mar 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647948684
