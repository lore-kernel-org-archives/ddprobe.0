Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9B27F
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646871985;
	h=To:Subject:From:Message-Id:Date;
	bh=hir5ef9D241akCM3bKFJxhIDqWWWGKN+w1m+bBtaFN8=;
	b=JB7SuMCG2/uuGVNrjOTV/GlIcLqdlvZ0DVV9TBU6lZ4rTKmyevo/yiiSlvmLmRJc
	imdKHV3aXaVkHBwHDwYwaH0IgElC4WyQwOU/KouH1XeF5VkNu9bQ93Rqj355N3Kg6yj
	5+mzQx+cd2FOe5/y9te9S6oIjsnObaZ84T/KSgjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646871985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hir5ef9D241akCM3bKFJxhIDqWWWGKN+w1m+bBtaFN8=;
	b=B8iPhBr5U6zS1v7JmD2t0XYjQYEkMf5BWy556qrfOwGsrVmMzks8hGsMKkNQ6t+C
	ZTmf8TUflFEy4W0h6yFR8SmnaiJEBAcCNco37dobijjzvJ+I2i1ZruevSzk+VEw0k5g
	hNvRGuLZ1RLMyklsXQxj4QRp/QchmQq524dlyNlI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f71383a66-338cc720-0c67-4711-a4ef-1cda08b6b401-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 685556f20a4cfba487c2d1b2aced843d66694d48922d3d59388821e729b81775
Date: Thu, 10 Mar 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646871984
