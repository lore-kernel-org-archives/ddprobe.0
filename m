Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2325A33CE
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 21:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653170099;
	h=To:Subject:From:Message-Id:Date;
	bh=MEdEgCZw8yFxKaYqT3AfTJYJxrLpzU+wJqiYKErlhcA=;
	b=CtVKNFAMl1NgxciCNANU69T6HZCHiwhlGvY/mCCXr4eeTFHjhxTqr4oNMp+GVyuf
	6Lz7az589tAz/F1yhBg+nlHt6nMQxaTBU3KXhkXtI5zZwYF9ZPrCCAUuGkxoxOS7+HS
	RC4BZn2mfuOX5EIS9ywNHnP+ShFiP4T8ECG3gj00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653170099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MEdEgCZw8yFxKaYqT3AfTJYJxrLpzU+wJqiYKErlhcA=;
	b=MRn+Lu1dwtgCqqCp1HaO5k7UOsLGHdtDfdLlonqkeCIZ+VtkC/Yj7HrIetbDYRIk
	1j3azlJqFLYklKtknGLNph8il5cyiQWaCcfAbIgEJ9IC/OHducdxaeJyti/CWPROJ6T
	653qe7SEXGPdXaes8iuc+704oRJEfb65mR73L0nU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e89dd50b-9a44b687-e7f5-43ef-a6a0-df7c55450a53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b445400339c521664ffa76a4f01cf33532a9301ea62cbae27bc5869e338b3fe5
Date: Sat, 21 May 2022 21:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653170099
