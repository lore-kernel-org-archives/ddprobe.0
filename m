Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF297A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 09:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650878878;
	h=To:Subject:From:Message-Id:Date;
	bh=u8FMioUoFmJQxsbxnFMSKzz2e4/bzgTRkA7aO0VKDXA=;
	b=KQtUe16KXNy/xMRyk2Yjovw4d/afVQalzMlKqoVykJJX5dOdiQHn8KQOEEO+NuJj
	r2FWArfeqOrn5w2n+Wlf2I4rug4wuY4CzcLozGe4pAYUnCwHQv4dP/QXT8PBhb8Px+G
	P55vUme1V/Sytf2K5447UfG40a4ZhmaBvD4s8fmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650878878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u8FMioUoFmJQxsbxnFMSKzz2e4/bzgTRkA7aO0VKDXA=;
	b=VMvIzea1Q9XZns5rVHOwBFkmynuQZujfdnUTH9uJxoW9IJlQ9zlOBLty7fkF4hHP
	upGswlWADjev7NCYcQ0oeql7bvRiQ89ygfvhsTOl9v3DSssCC7zvQdehTT5Xz3Pt3PM
	1VduGEfe/g0zhVasawA3pEKFpsdDuUbn8SLvjtkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180600c9247-25f6552a-a749-411c-a86b-3061f2a4dbc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6ad872fb47f484af25fa302c5e66f3ed291df5ee3c88a0a56368e3f5de4cd46
Date: Mon, 25 Apr 2022 09:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650878878
