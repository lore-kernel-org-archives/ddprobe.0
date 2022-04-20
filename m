Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034747A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 22:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650492658;
	h=To:Subject:From:Message-Id:Date;
	bh=YNHUrcSuMh0TE/4UirZ0A701RBtbJUEUb7h26zmVUWg=;
	b=aIN9C6lesCQF7soEPSUbYmpHf6ekjXWqOBt8t0fcZu3TGGTGPEIqBWwJKA90ZgMw
	e9veoHRZhAyDbB1gbzwgq0NofpdAIolxOKnG7OGga/ypR2W4y8juuxPg3KxsvB5p+ty
	lPt7PXEfZrqmmhW99NoCBwSoThT5DgbMHi+SXSAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650492658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YNHUrcSuMh0TE/4UirZ0A701RBtbJUEUb7h26zmVUWg=;
	b=jRtbhGMKkUts2tcCqXbOx9c5NhCstnxFBP1ETMbwmKXHK1ny01wRZH2Jzh3wAKWg
	Z57IUpMr1pNEMfeKv8cY1TyxSXCF6bEQENFB3frGGZIDJILyLqdEYGzLoD2eEjTqQX9
	+RNA1TGJQeCLGbVWHJrIbOsUlHk6e6pnrv3VTFWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018049075277-9b1b096b-1878-4a1a-b14b-0b08416f6867-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c6eb370eddeb33baf29f4710edec8e5374073b413443409500cd64889b940fa
Date: Wed, 20 Apr 2022 22:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650492658
