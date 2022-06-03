Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0ECDA31
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 10:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654253339;
	h=To:Subject:From:Message-Id:Date;
	bh=nsfaa9Dt8LH7/wlUVNYV/SnHeMAU9u75MAkROxi68aQ=;
	b=V+16W14XSycaUPVND4Svj7dvEhplna2eM4Fp0yKpkAKDLYw8Pfia8IMnD3JID/m7
	mhlt8Yhg4NcD1KMea7o6/Q39LXVtxsIdE/cZJVB58d19INtUsLn+xYIYJNokW7XeAXX
	V59RDb16nS1ty0IYHnvBiLFVriJ1zaMFyHmdZHwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654253339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nsfaa9Dt8LH7/wlUVNYV/SnHeMAU9u75MAkROxi68aQ=;
	b=kI9dYHsYs9S2Z9eUtgpi893tVr7nXjTJAa40jhlaWY49hEoP17JbPMCoFLplC3kA
	sPeuvghp6Ell65QdO6uk9DtCnRyVMwM2IXqHLdbqsOFJB40/1w/ii1ZZhtfNaSxZ4R4
	+8ogmTdQT0WkSccuWwRRPJyS6zIaQyLXJbYYmI44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181292ec2ad-23d68516-07e1-4390-9b9e-ee1443070c71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d0b7a48b4a9e590f4643c6a9a0370afebd0e7b0f673db43058ed9e8afe7c9bd
Date: Fri, 3 Jun 2022 10:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654253339
