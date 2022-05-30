Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C5B7A
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 19:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653939479;
	h=To:Subject:From:Message-Id:Date;
	bh=PC21kmzO5Ruag0KVPgPgSKnasfVjN7avn6H1S0odd3w=;
	b=dJMX5aasA265rV4hvvxOCuNNCq83TobA85FS1E/4cnEQIUIHOE5yTGbptqL98wzw
	r8cHtrOWrIJ/9vEb8YsL9Oq4168DLkSnFF/H98SIV2hJAaBI6hX4bfOxISctT1fEEN+
	qPr8kPZUpmhSrQZ211cVxR/D3OXdD6BU8UP9EEx4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653939479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PC21kmzO5Ruag0KVPgPgSKnasfVjN7avn6H1S0odd3w=;
	b=ih3lEgKZgoP8ERbElK2NuepeUzRv2l3T7thdguRBmFwOmzl3OmKTuhz3xwqjTr3c
	qqgmKpHPfDUVoWIgnnT2cZqtwEDYSCzZ2C85T8BRDU8pPpOc3r6bmg+7RHv6dpYzYW1
	Ead247EPzCEoflpo9IZM77cNwvZlK9Qw5uQtXbZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811679a319-7f10dc1e-7b94-4a1e-98b7-6ee028131b65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7343a565a946fe3a5be5babeb09297af97e40580cb0f4bed97f1a56029eb2a8c
Date: Mon, 30 May 2022 19:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653939479
