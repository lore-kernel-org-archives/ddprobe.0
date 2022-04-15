Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE927A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 06:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650002938;
	h=To:Subject:From:Message-Id:Date;
	bh=lpxT3q+L+7hyi8u57abNo7Wr1w68JJIYGLjXVE4/oe0=;
	b=mMu1TOME1CjBBj1FGV4IwQyTHKziu5M7huyoHn2bMRFXIcBcFufvV2u8LJcuQGA4
	lcdQ1xT98XEAjJ+/2UHr20uXNtgNLSBu49ji7d4gu0zV3FO2gm5sEykNJwcS/lB1fJO
	jsUqNrMfQ0mUZGhnQSLjILoHRXlBwlxGhfh3l+Hc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650002938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lpxT3q+L+7hyi8u57abNo7Wr1w68JJIYGLjXVE4/oe0=;
	b=eXfpkkX5mz2fSAfD3jiSQhGAJXx1MtF5RHV/9h5lchK4IqXO2FkN1+E5vpReoe6a
	+z0e3N8Bv5T/LMayNG962uHfIQ2a76jp8auvfFE824MyR5IoactRphbumIyU+W/a6a+
	ADM/ghJMOlVUI1k5GV8AsEqBD3TqATZ6zVa0YPC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802bd6c97d-04e26370-be83-4684-bd6b-35e3982efad9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd2cd5d10de34b7bb40406838e47385435fa840abad09982585d06f8cdfb0abc
Date: Fri, 15 Apr 2022 06:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650002938
