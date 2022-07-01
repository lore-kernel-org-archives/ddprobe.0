Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA6E10F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656664612;
	h=To:Subject:From:Message-Id:Date;
	bh=aKP7Eygz/sGCTxBpzVHPxyP9E9NV3O8DJ9bX4HTUutw=;
	b=MUm5uwgNJHvryWnPhAOU4tc4PwdIOMG14bBLpGUPV7YHsuuLW7a+qdT2MwkYh8Bs
	Yut8zOU+9LqK+BX/+5n7TW4j3XZZYlTCxzXCyD8Ug9lYJQ2lW/eTgSFQYPVZS5C7Tk+
	DAndx8gJl3X+o3Ocn/c6lcEHowuygfLUskSeY+k4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656664612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aKP7Eygz/sGCTxBpzVHPxyP9E9NV3O8DJ9bX4HTUutw=;
	b=W+Ti4Ekco2Y25HK6ePF3G3fUx1y3VGXfVMpPnisSlBUnWryj0oagezB6UWovavvV
	LuZUCK4rfNQlDCVzytudRT7ADImLghfl9m+yoP6Owj1xFYJ4Gs2GS0ke9zrf7zwReqT
	SbLcWeHMg5xKNLxQNQnz+toBxWdDMERpOMgLI9eE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b8e7ddaa-4ad6a1a5-2096-406b-8045-89f1024978c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f6993a3fde4236bfaa6a2d140ff6373b194039b24ea1299568b6d0ca3128f37
Date: Fri, 1 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656664612
