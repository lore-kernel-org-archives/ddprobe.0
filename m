Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC9715A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658480212;
	h=To:Subject:From:Message-Id:Date;
	bh=TMLUF5MDz7nOMICutMtBHrZSc8mwq4a288HYdo2JugA=;
	b=MT5JTOroWWxLICDs1K//BNMaNKYg+NjQz+4gNY20ZbTM3yivbIMo6chtsSOq2nL8
	t8FX6LfUe2+BAU7wkVuqFpmJe6Dn5vwLAMKJW9LUjj9ymyX+CroLBSRBYzZxxq7mpbV
	zkr9zBDcwJWwgFvtC71A9CqAmglv4kAY4eH3KRXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658480212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TMLUF5MDz7nOMICutMtBHrZSc8mwq4a288HYdo2JugA=;
	b=J+6tBPdJ+Qs812a89Lb8NuiostszskoKLUTpFl94OBc0Q1hc2fAYubLY3eHPYvNC
	fEmsLPzrT1jUmmARhY90l+Kd2VzamIFeelgd2fMH3p84sHM4o6mR+Tug/h6CrBaC41P
	vJ227icjUvlqPSPS1UF1O4tP9v/17y6XUzOvmdDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182251fb928-1ac12775-5757-4756-ac91-bc62a1d0fa94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 779f99460452ab8db42ef766f13f638c5d048dfdd697b57340bc09f979349fad
Date: Fri, 22 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658480212
