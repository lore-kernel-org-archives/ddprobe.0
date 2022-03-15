Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9447A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647317485;
	h=To:Subject:From:Message-Id:Date;
	bh=JgptUFQVwciDnqT5Q3RY7NX/xNRf+2nU06ibfE5SBt0=;
	b=iPxen8hclg6cnG0HfhuVRJxEH58m/jB8ynx6d3sHaVkcgt0CZRFtQtE9s+Fsf4xL
	CkVWWVILDSfZcTBRjgDPZS0Q8VRaO3Q86/hdmIdFD3p1S5MEU+yiu8R0fzwMj1VY54m
	/XL4o8aJ14W6IKmrUVbQBqWS1z2ZXFOvBwwe1nAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647317485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JgptUFQVwciDnqT5Q3RY7NX/xNRf+2nU06ibfE5SBt0=;
	b=IvzXMgayMhnlIrDFzlccF8Qbf0qkSH3zzYw+cpAf6DqPaIBBZj8wgB6JBurkcNsH
	1UaCXV4esJIWtV4HP0iYdy6Ggq/GVYBMSmCRd3jtKloVQEg1HG9P6JQ2Ko6yHg6AHfY
	XNxFprQ78OZ5U95yLtrXCAR6PLyNqjqT+xqb2N+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8bc605ae-ae648508-a4cb-419d-8e1b-60a4ff0d6583-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9ebe025e33d09df4b3cbde7df78ac5b18a9924b21ceb76cec4d8b267d8198c5
Date: Tue, 15 Mar 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647317484
