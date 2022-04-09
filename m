Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE10E7FA
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 09:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649496298;
	h=To:Subject:From:Message-Id:Date;
	bh=DNfZeyC2CRq6xntgu+ie0jQuZOH7A4camJqIKtWTo/s=;
	b=QexwBgp3f8mNpwR5SDGvUTSAfXYM06AMRI2yxe07+ZyodOd/skPkZo4z7O64Xo+Z
	4qiQENdWQz0OEvQFsOrtpuoTaKyIKpxrKA3/0ePSE+krqKLqr3LOQedBBfQf2TUyQ+f
	e0dDuGURgZA1/6TB9g4x4h5yys7NqtLcYETxmN5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649496298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DNfZeyC2CRq6xntgu+ie0jQuZOH7A4camJqIKtWTo/s=;
	b=jcGyVN9JdXk1TwMpi+XbIe1w0tPnzmr0yEh8OG3AZxP1puihBj0c4PlIufslRQOe
	bhtZdHtPj80hzRrBsp+ODJcGfDKaAOvYDDrbJ8J8EfEbeZi8NGGcw6MSFQNuvXZoLoC
	jZUhzMS00j0SrCoHyzZ0wpnj/qUvbXaG9khHWOCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800da41315-ca868a04-e010-4a1a-bba2-9741394a5bf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76c47a833546edfb6f2a58fa02429bac62fa72b15ffaf517da3e0dac4d3ed4f2
Date: Sat, 9 Apr 2022 09:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649496298
