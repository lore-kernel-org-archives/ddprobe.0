Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F583208
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 22:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652307599;
	h=To:Subject:From:Message-Id:Date;
	bh=7ERT2NH3HrZ6u35dWZ1js0gM7YMo4hwVEtDOhi0YDDU=;
	b=IN+kOLKx22IN4xoO+ERk4/bs8Yrn37aUM9W+ykEr8rwKKPu74+X4lY6E/IuhSTDf
	kn7BYpQ+etxvVsK3lAf0vp2t7xJAYFs/ctNiOWG2dY0LXH5rPhHs4RSgXJtlA/klSPM
	SHfld0TYv8DaPf47AsgqqLSzrayaQdN/zO/Gv7lM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652307599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7ERT2NH3HrZ6u35dWZ1js0gM7YMo4hwVEtDOhi0YDDU=;
	b=ND+7sjB8JjBVi0mnI0hfEeKIIXyBgpzwnnC3dd0IUfJOPyL0Bgdw6Ldm3v9qGk6v
	Xvm/mNmVx086zPj30o+QULR7k9WjAOm8Ku+I3p5iBjdZsVnwT4phdJm3nNcY7AqZFHc
	MaV4/HKtPoBnaCyEvmL603iGYi/pwCmpDFBtkEAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b5352000-4367dba0-5d3a-4f14-a9e8-09b556cbd861-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26e3f9ce44021526f9394de316daa679501c80a3a762b5522576413735751723
Date: Wed, 11 May 2022 22:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652307599
