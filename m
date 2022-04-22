Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED210290F
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 17:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650649378;
	h=To:Subject:From:Message-Id:Date;
	bh=a9awyiqc6HfIQfo2BmcFdLR8JjfP2/Hun3TEkEQesHA=;
	b=CtAoYtcVnmwHEeQa4rwPEUgL+aaKdVfsQzHWjhbthtorCEWp8b2CM1f6zJ1oDWxb
	TJqrhXoH85szP1cJrS3r657LWAE32vKAx7iJnW71HgIGvA42DxomqU6S93UiHaAg2Py
	fpMQlJRdcShc/09WNkL2bgir44gMP9JxkcaqYzZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650649378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a9awyiqc6HfIQfo2BmcFdLR8JjfP2/Hun3TEkEQesHA=;
	b=etzcarJconCws4cu1mvn9IDLsi6untVmPwkKEdiRAHso1YzxTYhVYB3rb+E6wJ+n
	kMcPmF5SD40UEQs1yhlaL0luuXyDAzFosmoR1Q0TPiFNoMKtdZBYQnE30C4nEhPZE1B
	v/JdOy23MM4L1XLjZ3kT2kMAL5my7HkAMwx/m6Ik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180525eae03-180a185f-abb8-4bdc-8762-8246950e72bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9bcbe3b7560c47f14264721a386e37a365f4d1fe93b1685f0d32797a5bc9c65
Date: Fri, 22 Apr 2022 17:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650649378
