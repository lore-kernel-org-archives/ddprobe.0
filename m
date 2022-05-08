Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD187E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 02:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651975678;
	h=To:Subject:From:Message-Id:Date;
	bh=+0KbyURKEkkZr4pUxFXAe3P810CLcR5xxp60zCnWbw8=;
	b=gfPbvk2o+VjXVGXTt6KsTx1bmkWeZhMTI/4VGp14vTowxWTfJI35HSdxZ86tepBq
	UapVZiIjQhk6pJechWGLrCnfoO9oAQ0UANUwA5JktgdlEQGAytl7X7ZQZ7voKS+gIhB
	JFxu+pcyYyM2ZsAqf0wRsivanEy7edBHftxwdON4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651975678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+0KbyURKEkkZr4pUxFXAe3P810CLcR5xxp60zCnWbw8=;
	b=MIDd8z/GNJB6nHwRl7UGr/UzFKW4NfFt+zfeqLNnoe/tCLhY9DEYhLYgSjcTaQWO
	J/Mdh9/osnIVhLt46ISN+5Uuwa+w1d1ZgPfHJfL1bbR2q+sMbByuDkZau0brwRgf7AR
	REza0pG+4REsBUR9TZin25AoZO+/bll4sAGjEklE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a16c693d-138de97a-ac57-43fc-b420-86888a2a89d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 773e462aa28a9723ba8e9e6d8f8819967fd782af15e9c8108e87d65d83b712ed
Date: Sun, 8 May 2022 02:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651975678
