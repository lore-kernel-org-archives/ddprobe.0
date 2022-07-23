Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF937E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 10:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658571413;
	h=To:Subject:From:Message-Id:Date;
	bh=j7KIopYd7Zrc4kDh79yb3E2/Pf/8DguBaGdeCkQiEyI=;
	b=Tu8F8xCk8iBZDMysbTSdrvK4w2kF7THvBmF34TSvYr4MN6zwHDROpcgwaMEVUdrk
	RmCI+oE3l6kc1v4KSB/YSlmoLy0oW5NHd9n3uriNITUWsmoigey6fn13c3WLFvwlpwo
	ir/cv+9PjrD/lq/ilr1YZxKlR1R+9r1QQcZCRobY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658571413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j7KIopYd7Zrc4kDh79yb3E2/Pf/8DguBaGdeCkQiEyI=;
	b=K8erqNtxVA3xR+hDwmDDbChMkWlm9clRONDVFv8APJF9v0viUys/NG7S/A1HwtQY
	QqRbb8BndU+5TYa7RG/XNBMzWYmyA+fktAsn7ud3VIaDKoV5/vHUaEa+DMAUvcw8HR5
	qrHRo2WHHF7oq0GStRN7hvn3etPX0IOaTobx4gu8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a8f5377-b640b7a1-4e0a-4ddd-bf51-30f29f9e10c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2bc3e9f4afb0128206e1a59dd419266a557e86bdfd0537839d9e1c6c8643aea
Date: Sat, 23 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658571412
