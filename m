Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECF929A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 15:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655393639;
	h=To:Subject:From:Message-Id:Date;
	bh=4RkLATBvddXFz52LwRdbVXKJSplC98f9ezWJDg+2X+M=;
	b=j2q/baAQ9mLuR4dg+JKnkUTD28Zn5HKG5zGZDzx4dsXhkCiyRpBovBRIw8gYU2YM
	jT3B39fQ34ZPMnOPuzWPOELq1Jbi9nWGmNUqQUUzqUpQXBX0nVpN1pTUDEA3t5b3Ub/
	aNm2t3D2YW9h2ooypjFMRFvYtMOFqyW6c1vGV8Mc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655393639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4RkLATBvddXFz52LwRdbVXKJSplC98f9ezWJDg+2X+M=;
	b=fNzU7kkIJUQDS/l+LQR7S2luEvx8TkLozVgB9I1tEWlMkcDL1g8G97vjxCQJKFIO
	Xb+7+pz1/mSpKhEEMAg7YL+yg1wa72EH8N3zsO+rzHYguYK5+HqHFXqlUFnNBFbxHEi
	jmdrJjWJJi5oMTPqblqSnecKy5ij7MgE12CU5tf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816d265b76-d543db30-f13a-4186-9a1c-9f8824e09b77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4dca3440fc8c982d072064a8c05eda5b059004f77fec45b6f1a79ed6015f6098
Date: Thu, 16 Jun 2022 15:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655393639
