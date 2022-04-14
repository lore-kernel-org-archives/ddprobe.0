Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069CC28F5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 14:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649946238;
	h=To:Subject:From:Message-Id:Date;
	bh=ADUePitcSIhPDSuyfyQp//V5dLumTJu8aYFsHYqMMnk=;
	b=TZ3kxzGlY/8KOOPoWvRx1VD+2HwYyD/bdfMU2WINoYrCH1JnOQcaAibITeKrPV7n
	uC3DeKGZ5QcKE9PJcaxSioH9RGrE5jV3bYBMd6yXHr24qzL7Oyl0+MCE/q0G/J6v+nv
	B3RBJEMLi/1C6rZ/NT0XdWF+DWYWB9Y3dPwbNn2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649946238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ADUePitcSIhPDSuyfyQp//V5dLumTJu8aYFsHYqMMnk=;
	b=RX9LfcV0yrmQUm/8YBGemkCKOKOH9hyJCVgOSNFiyVIoKXmbu9/fCVSe7yYE/QNL
	ggh7ZDA3Fbgv6q1EF/8N/fIaZEx6I86+k0zbgIgyKabpd7q57FyfirIzWqTD1U9jaxX
	STMYs1Q63+uaLBME756HnmjTF8pFdXJ8/fuaVezM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018028759d5d-83dad777-1f86-48e8-b792-ea09c1b47d80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ed12ffc7aea8fe7e55a64cf68d8dfc74b616cf510480406016d516d6cd021d6
Date: Thu, 14 Apr 2022 14:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649946238
