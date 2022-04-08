Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC3563E
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 13:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649426218;
	h=To:Subject:From:Message-Id:Date;
	bh=C/yRJUKmH09R04kAINrJPl5B0P3fkDlk/aYanGemp8k=;
	b=VdstNRDaHCix7yJFQaoLyNXMG/pgZhYVhWg3718RGkqn7sHarBDdrEaHhszx8Wme
	KTbdNtn9w2uCVccjGsj3U1COnE+KKxKGOZgioUu3lT0LP0Q3JYy+lz+fRh5rqNCuVnR
	x5X57gAmD2i6ZGp7mkWJFG12/zix10jyrt5m5wrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649426218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C/yRJUKmH09R04kAINrJPl5B0P3fkDlk/aYanGemp8k=;
	b=U8N+N5kJ5bFVuUySQPTZrB5lylvaAXb1THnACHlHC4wa4oGVQss/IFFKf8fiuDWp
	fFd5Z2fjPOq0P2/P1n+CAs1DPvPxYkfcEb4ohfQIS/O8RsX8R7CRE/IqjbwbtE/JdpX
	H50f0TRLqwZeL+kJ1vBDNXEDiw5dc8loBrxc5K0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800976bd1a-5ca2eff1-d813-44ce-93f9-495fd326950d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56a28f585016921c72da19a21b32c4bbd5357e997d78306cc79e9ceb5bea0086
Date: Fri, 8 Apr 2022 13:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649426218
