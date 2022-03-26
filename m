Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56A27E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 17:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648315079;
	h=To:Subject:From:Message-Id:Date;
	bh=vi9XU+iaWfQfUXg7PE/r/4E9TiPpdN7xjeuKTu24rG0=;
	b=TRIJFWUW4UzeAzrYcuO2zSFPKQk/sHq2y1fcDU+CeBTgS6qkFQQeggyPey9K/wK6
	LrNt+TN9l8CqlftyCge6Twzx39gT45PUbLlLCanZNcdZUk4ovThPOVsQgS/F9IvhqzF
	OBevGv/DulKcp3SfVDmr2mfPUEBMQkt6Q4DL106g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648315079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vi9XU+iaWfQfUXg7PE/r/4E9TiPpdN7xjeuKTu24rG0=;
	b=N/7Z3XkkltnENf4WyAtP07ODeYiS5QBG78Vcst2NYNkqxB34JmEiuYFUN+7i+H2P
	a5EQ7E/Hj36Tby4QqASeHx8SOjd1ou8rbTk5pwIR8xQVAJh9i4nhbMvFLIB45yUAfuw
	9snWaBdPQV3ICY84qIm0aohrg9RDMbxKk2NEsWpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc73c1680-b45b9e73-f888-444a-b5bc-123dc7aff724-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 700dc724d634c46e0516a00d6d89c3f3aa18f477f311fea3dabc77e85d8a3688
Date: Sat, 26 Mar 2022 17:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648315078
