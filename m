Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3197A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 05:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647582085;
	h=To:Subject:From:Message-Id:Date;
	bh=/IPhLIXEr5wK1Zfvpr7YPthlhtS5CD5CaUkYih7JpVA=;
	b=A7EXS2uyJCbzu8eNIKb20zfp59ch/Iro5GYhVEz1p1AMuDkimThpv+tD2ZfjRoUt
	OvxQO7vF9HMio41u4bUn4tquhugn9iJ0sDjOb9eM6cMWhh1hya3rEV22/6Wj+nf9QkJ
	47ajWQvlNs4pML25dHX6OQldW0bTUCQgAYW9vVrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647582085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/IPhLIXEr5wK1Zfvpr7YPthlhtS5CD5CaUkYih7JpVA=;
	b=ECWp3FB9s27cOKKX6CT9e/O7OaIyCjSnKHD2tJITLR87qWskYIA63DPIrQeAbedR
	MZO8vp3Qx5GblnN+eEYkaR2pODwVvn3TG8w318ZtkNfgaI7aLDFFTAw5cnQd+TfbL0c
	4nrx+lK6w+3bGYJvaVjYZA0GGwVtDuM//aZOVbZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b8b7ecf-3551af30-0a22-4400-b43b-31443e9f721d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6af1bbcc554c92645008b2d4b9c7606216c0098ed332a3cedd5ce73fea9cd18
Date: Fri, 18 Mar 2022 05:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647582084
