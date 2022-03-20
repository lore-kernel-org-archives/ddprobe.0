Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CF320E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647745584;
	h=To:Subject:From:Message-Id:Date;
	bh=tZ69NB2M7S0f1HvlJnFrebrx87dyNJVS8xTzsxFKiqE=;
	b=KCQjY7t4RZC9+gEZjWKCEY8esmcLudiuSB4zHc1eF7nrqHBJmLQfOMYicznxAJuI
	O1RSp9nYy7631FnINCr6yO25dc41JAeLWnbml6AAkhOuNf+Gf379a+flWwOy7WYYB2P
	aOKuax1XfI6K0fwF9SRm6EARmnm3A91ssBh7EVxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647745584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tZ69NB2M7S0f1HvlJnFrebrx87dyNJVS8xTzsxFKiqE=;
	b=fVbYUBI2DnuuHsdCeWjunLPMb0Pk4vcjB8efddFzstkyx4GbsyYLlE1jRI8NldFi
	LeVteZ3eX5O28jcz1/1f8S+8biWI47TVr5KtJFLoZEBwOFFbHSx/26vtoxt03C5fjMg
	5F+3kqxct4lPYTYRGyXsJ9dIKLoet2/FMiLf0JQc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa54a4e65-283cc987-53dd-4cea-89ec-a10eae9af8d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ec60dd84d36441b26240bcbb0f4a42b5baf0729fefc52a7c454a0bcaf1060bb
Date: Sun, 20 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647745584
