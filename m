Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163877E0
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 06:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650262438;
	h=To:Subject:From:Message-Id:Date;
	bh=Pgn9r9x91qf2yEQL9hgb6zLAfo6GySBLWGdVfXKeAR4=;
	b=bv/w+diESusK+OeoyAVSquoODMhCMPgpXL9l34HmXsrYdpTI19vsHVhf8v3e3SSq
	eRsjnvza+6R+MhL3cx/z2rLJKZnboEfqbw37gYLTv+cIWHFeWG9BKP/0LNOmyupZeYE
	eSEttNof/H7tdx/ttq39pNIZshBumtgkhuGQtyCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650262438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pgn9r9x91qf2yEQL9hgb6zLAfo6GySBLWGdVfXKeAR4=;
	b=LBvfttYDAF35UFBD3jPsgp/fDD6eDyT+2K5WYP7OtQYSJHzlFmrgtgAgcnjW04K9
	UF2JtuTOxUdWoWQnQJquy9tFb8B+r+aj6v4+0OCaztS3uDWkXo8+JY9yLOMEkjXdlHH
	Qz1qMfwz6oJa8VkrJx2Sv2/xYPNa2XcE2eJxWxRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803b4e7170-5a6744f1-8b21-4fb6-8ad6-9b6ad772fbe7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1a5bb8ea2eb2c3597a79968b616423404b8bef7b5622921d63daeb9624dd72e
Date: Mon, 18 Apr 2022 06:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650262438
