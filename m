Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9219E4C68
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645217184;
	h=To:Subject:From:Message-Id:Date;
	bh=yPvhw2eOiKULTQHvE+f1T2jO/x8EJJCDppmaQveHHAI=;
	b=V7SaZm+GbXB+ZV4r+e3wJ9zwU7lArc4nLL3MYJ2awhfwWHJu7ctiHrdpIOyMDXr7
	KsPVtiztamMWPFAG/RmH0UjY4hK9MgmvJv+0ADOV6alQEePGckDGrE1JsQF6TyCL60U
	CSbYX9x5crnmzbbUZ1N5nZeSM9jiyWtJqRC8du9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645217184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yPvhw2eOiKULTQHvE+f1T2jO/x8EJJCDppmaQveHHAI=;
	b=WjTDasOMMkdUDpDqiD3U6ka0gqREHPAW1gNq8IBPyTM7MUmS++Diw/aAgNOcDkHV
	drObjMQqPnMlxaKryakMsMt1kDl/WRMyDho/LB0slHcTwJvwf1sIYUgZnXV4LVk3Fml
	Syy1RpbiQLcX0vRb/RwurZXtHnlZXGbhtlwPWjq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e95fc2c-088d7db4-83b5-4ce6-ad34-066b4c1d07ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 452a1b562ce6ac9d9b7cf3d76d52b3ca6b944a2c91b9f69d535366d62a401f6d
Date: Fri, 18 Feb 2022 20:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645217184
