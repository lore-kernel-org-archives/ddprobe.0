Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B47746B7
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648201378;
	h=To:Subject:From:Message-Id:Date;
	bh=tSA2pQM3T7H0aC/Zwtpm0UHlVXRFx9NH23aQKRKba68=;
	b=hjMww530kHl+kNiKmf/9ngfUiNnDQ5vdn2vd/0dHbV/jfsUUgyfuP1Hec/9f4JOb
	aV1F+4pvhKyFjGbfyG/Ip7/K8ZbRylc4buuYSYCCNeb2raXkv084jr7qjGVcaXbMA+H
	w1zYy7yIuJZOjHkFETeznDnRx3P09PEn8XDsPZiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648201378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tSA2pQM3T7H0aC/Zwtpm0UHlVXRFx9NH23aQKRKba68=;
	b=k408HvqjY4ZgP6OEzpqekTfVXdvca2rHloEcA4ptBjfiMAPJQ9dtLIaV0z+3XnUM
	f2WUsZ560s3sM0zX1P8o/ji+IQdDmoWc/zIxT1cbm/bxMVVvlFY3qBY2Sa5KcXs641A
	vnt/Hs2b95DzceNuQtqAlS0M+AD7oaSv5t2R68Hs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc07529fc-8bf7aa03-f70c-4eda-90b4-4bed37362583-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00de81895b6de04bc454334eea2308c1687ed75a81a8495dcf6432eb695327d4
Date: Fri, 25 Mar 2022 09:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648201378
