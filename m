Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCA515A4
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 01:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650677458;
	h=To:Subject:From:Message-Id:Date;
	bh=1KX6OLXgEZRYGLpctrs/Ismz6277T07RBct93XOFYwg=;
	b=Yd+v/gWUjso1PmOa/EjRMi958t9g+m1cm9wz8oYd7FolD54BCeAHthCdmIofV4D6
	FOOKQX1PGaMd7xrBceR3tXKs0uz4RfiusyB7OmtyU3TXaJQOvPJvISuhTYZnazcaCFD
	fZLLdue730uxJE1ZvFPWqwGpf1bQ8YquWRgBoevU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650677458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1KX6OLXgEZRYGLpctrs/Ismz6277T07RBct93XOFYwg=;
	b=O5oA7tNv7VTPG+Soh6eurOW3rIrjTce2Yi14jzCH9bV44kbmcc1AzDJLF5sPFTdR
	GuGB66G/iOiYgYbXuq88PDtmG2IaCBCRK7l91LAQmBiR6GCYGNk8KmliBZRxycljWrV
	lC7ukDoAf2s8MPKZYOk8NPD2ucmcLafahpM+5ESI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180540b2586-f0a76669-0726-424c-9a77-6fc148b82e29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c19c68fd7b755e51abf36177ff921293a5e369262364e0ee0280a6a01184b31
Date: Sat, 23 Apr 2022 01:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650677458
