Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B1A4C88
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646773885;
	h=To:Subject:From:Message-Id:Date;
	bh=4MgWOoDip75hAPNV27mmVrpVX0atqx4VkWlSYfIF6xs=;
	b=NDJKbaGjbIAUC5PAFgUgX2IsDOs2uuEoqqFMQfZfqdtrcRze1texeKMzGNE1haEn
	d+ZyndeLUBpQoqmkBv8543KrU+Pc3azD3jYqc1SOwSp+BH39Jj+OqnZ97/LaH5+X6zz
	Lnz8HQzJjB7T+Wrirw8Zs+kgKGAmXyW7t76wvo5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646773885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4MgWOoDip75hAPNV27mmVrpVX0atqx4VkWlSYfIF6xs=;
	b=gYuyz0zOCZqkDRtmHOhkbXaZ2um0c5tCkRuqzz4kjTEwLVirf6WeaO7sixX64muu
	Yy/DZtIbsQEUdaBdffgoScYvFRjiC793C+ubckePsGrcufy/52dVF4FhWqSp3XDj+Jj
	iBpyOIMMt74Ita/JRShlbRFJeEBI/e4YuRvKV/CU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b5f5766-c19ac807-88fb-497d-abd8-b593708fa4ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 271694dd81f0fa160420c567db7e4dc746f7e7f9d47e84ddb43fa918f99fe021
Date: Tue, 8 Mar 2022 21:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646773884
