Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9A31385
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 18:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650394138;
	h=To:Subject:From:Message-Id:Date;
	bh=SysvFI9DXfs5TF+4WjL86Tr6u22o6lP0RS3Lw1VQvhs=;
	b=PF4NKZ3ol0H8KhQ1Ols74zfUM4bm6JK0kXOzUhOidwlyLMvePqNHdYViMZNflBqm
	3Sle3sxmBztfPpUkCANLp5x5nkJN7LcgoaxV5vTLMV+AAqE+rJDj8HoqRoTwEBGfcpj
	QgmAfWdqfDLCIgidoKhXbKHNU1SS6D47Qje3XpGc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650394138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SysvFI9DXfs5TF+4WjL86Tr6u22o6lP0RS3Lw1VQvhs=;
	b=A1ksyhnfLIThnBtiJBcpJD0Z+BdQbbV+2HPIsDX6CYGHXOVMbpE7v7FiKKn+3k2z
	sIJHtKlFwxLveKjtQqw9SPhGh6s/WEU21SBmbCo0YBxDvcgPN1llJrYVyPRFm/4SM2C
	Y5xHVbFH8dH37L0dxVoV5qRW/LlaQJI/724zBtf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180432806c2-0d159582-8592-4366-b628-d17d0eed7cf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6315a7fb4944e53a3d3aa79649ed6aed4bcf6c07f90edf4d9855e96fb4aba59
Date: Tue, 19 Apr 2022 18:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650394138
