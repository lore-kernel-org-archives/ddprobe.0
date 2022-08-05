Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E0EA3B
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659710453;
	h=To:Subject:From:Message-Id:Date;
	bh=bMOPRqa7kMBsuOkMpgrOq+iPa5hYo3esWPPPiEVhCS0=;
	b=LeFv2XGfJrbLOCa1XtpGYl63PM1/+UjM6WnIcanTUHOW4jVWcprjEvdG9hGOxI9n
	fEyxX9Lp/h8YDz20d0LZk5QMYdWWGPZnNS9dG4+uZED9VvaKEpcrp2k3vO5DIaq45Ni
	yakqJxog7hUYDcL4r9CKZDz2uGzqELYJ1zJMG074=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659710453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bMOPRqa7kMBsuOkMpgrOq+iPa5hYo3esWPPPiEVhCS0=;
	b=R+wTkyt5EwX+wzd9spFWDyYvYEIEmWIqWod97DNKyuSmeu+8mYKpmZdmM0WzWAt3
	gB+MzoORKt8Ok47X5X1FEDmRhteN2QNrLaLF/HhnilqZTWORo/BTV6L6rfIe2KgO6Ds
	eDe1EcF0QW4HUFLP589wn0eRKmBcjROxQuOEOF7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826e73b37a-7524b6f4-54c5-4b05-9041-f1141812292d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b11a4eb15d79963441ef1a36df838be16d15118cc3e88f2c3b95803498b9967f
Date: Fri, 5 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659710452
