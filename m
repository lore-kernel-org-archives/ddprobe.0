Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A77A1FA6
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 11:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649761318;
	h=To:Subject:From:Message-Id:Date;
	bh=R9+UlJPAir+kerv2nFLfMIqty6JzQ+MS9BY980WeRPY=;
	b=ka+qluyrokC9hsmPBZpUI2gyDt1EybhCdAV2T+rmWvzEI+L18vfldd0z80YAK9tq
	G9Q3zNOcGnPMZiu2iEMY3MOXQHAiiAJ00vfi+V1f9WwF6pvUAaCPJk8c9x9vBvv4kh7
	h0vhKatMterfEPSc1l3BW2KzUaju50uskZAAv7vo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649761318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R9+UlJPAir+kerv2nFLfMIqty6JzQ+MS9BY980WeRPY=;
	b=cDvQmC6Dyed0DqAbf7zJDH46Pb8T7hmN1mN0fqjFl+TfrHjjyh74rDGe0XJWlftI
	+r04hQLFDTgAtwz2cs/LG7/yNhW1j5n8jMrzDm74Ea+zF+wf3Am90jHMSH1yHdDwT6C
	+VqRJuzI8yYqwEawjuo+MkLa9u3pMfVOVLr08agM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801d6ff551-be2de80e-1edb-47c2-a5b4-cd41c8f962a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a87bad0d5ea3d9a5b3ad4eeff1cb50143a49b4545d2e1b779d12c80506addb15
Date: Tue, 12 Apr 2022 11:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649761318
