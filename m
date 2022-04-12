Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C6C46AD
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 07:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649750278;
	h=To:Subject:From:Message-Id:Date;
	bh=lZLgV+XEkiOdYYrcTxAtS0xcldFUCx8JdP0rKTGUwAI=;
	b=fGn5RnlvIsmJL96IVQZ6c5SV4a4YTfmhW65Iy1FOyGn6CuSVjvQpqfNrpkL3aIle
	uL+GyfWuiCDbJaLljDN4vhcsJ1O8CB4doHTYzvxvJuAiVX6aS9d2hhXa8cPWiOw8vLO
	5lIxi4RVlrI8YzMPQRJJHF8Kf9FmdlSqqL3P+ew8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649750278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lZLgV+XEkiOdYYrcTxAtS0xcldFUCx8JdP0rKTGUwAI=;
	b=GrXDSDNJnE6cE4qYyDQdT2w71mVZFUJFIpe/H0dN25CRfjRxVgJb6aEcJJplHTSy
	ghboz9dYM4qSWBAPuhJXClXk2RreC/b2/bzcB/Sr696GUeJKyR39g3gcgdayGbo5DXV
	AQN3QzxwoR3dXoiEcWk7DmlL/qNOkhdinNRkto3s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801cc78088-15a19880-e1f2-49a6-86b6-ba1ce5017995-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 289cb56608034f17f5f54f7189941e64854e6c223ea6b7d0b5c8b459ce6279f5
Date: Tue, 12 Apr 2022 07:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649750278
