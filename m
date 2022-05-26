Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314E11875
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 21:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653600659;
	h=To:Subject:From:Message-Id:Date;
	bh=chft4Ow+6VW44ows3J+79tDYzpSWA2Pq9voG5PGpmpA=;
	b=JSNu20sx2hforrnb+rpef7CmTytzoWIwDyCCesGDF7wXbAcz8OxC118ypnCBnXOZ
	+4SFEJzvLi0E06gbp/KWZ8696sHBCMDhRHD1sHbW3FC6Jwtza2lKb9+N4MgSK4w0q4L
	2+yt9nuYZlo7JSjr2TCi8IO+u0TcYxrQ5FkpiNyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653600659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=chft4Ow+6VW44ows3J+79tDYzpSWA2Pq9voG5PGpmpA=;
	b=U6GGKIAQNGSadRKyzD4QSuEVkZUavPIU9x5QFwVQIIjclK5c/X27/IcNF99xyqhU
	de0wPXd3Bw+ocxYJXahtOn1xyaqyUaY+VexRhgpnHYisl8rJU32pgKXzsqFq+RUTlwh
	guRYHxudR+a17aJ4nPwJF3gmuGpT71Va5apaKDoQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810247a736-f0b8b267-88e3-47fe-aa4b-aafa3ade69ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8e5160417c30df32986fb732436a56e4cd2ded839a52337e0754d81bff44ed8
Date: Thu, 26 May 2022 21:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653600659
