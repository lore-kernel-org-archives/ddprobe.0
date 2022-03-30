Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF917C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 20:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648670758;
	h=To:Subject:From:Message-Id:Date;
	bh=Hx8MCapAgSp81syvL/eOzqs9fKw/OHGhJuWaK67R7bA=;
	b=VjyJCuzk79F6rsN9jj7WSyBojoCG+CwZ0Y90ymaQuu/ygxqlYFCNIsx8z0TSxMqt
	bsVWzASJP+dOvgJNyrBlUTnI5I828PDyItKvg5mfi8U/KT/jSqM9Ot9DWU7PT1CwWeW
	VogHEqbjBL65QVv0BUihgMEq0+YOeHivLPofFuKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648670758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hx8MCapAgSp81syvL/eOzqs9fKw/OHGhJuWaK67R7bA=;
	b=eMQdsM8lTyjPShTqub2gzYCJr7QDTPTbpRFKE5SFlpLEoktmpsufsOLQgYwivYRS
	RBBPPP3LkNWq3LrQ5xWgkklKVG/8HgB9WeK8ZWjir2Am98S+7W7aH7w1hD0/+h+HWVT
	muXtLE1hTebF1xFs+R0vu4crEA/JbY2G9QVlSg0o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdc6f55b5-ea0ad01e-1075-4ef4-aee8-ad2f2c953667-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84d44bc76f2fd6d095faa32c6ce2844cfbb75075c6f89bfb0624155e5612c9d7
Date: Wed, 30 Mar 2022 20:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648670758
