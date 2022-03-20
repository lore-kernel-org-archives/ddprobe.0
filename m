Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074583FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647797785;
	h=To:Subject:From:Message-Id:Date;
	bh=p8ZKEt5ZTJzuZrsfg/NcsRK0Jo1Dw3YSBNAP1EBslU0=;
	b=kYHGREEBblWzS0p+1ULaO4nUumAZA/4hb7Dm25KVAJlX58LXTIkORNkNPAmamrvm
	jyyVGZoCxPR0NO1SBkG74SPbZdiuudvrsmpEJTppVJ2HVNfz45TFWwsP+F9VpBSjL7n
	w/WLcuI1myoNLhzT1EANVp8wXwZPEPJNs+7N861g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647797785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p8ZKEt5ZTJzuZrsfg/NcsRK0Jo1Dw3YSBNAP1EBslU0=;
	b=KlaGx88eZbJriySle9Q7xRo8J7VLUJRkrEa5a+0kr6TI+1G1MXgpZyMfMO6vpdzh
	tqy75P4HiXasj/CWDXaBta/xwZ0IzgZWnteIBUFGKktDWvus70OCDNojyrT1OhFnClT
	R9T7grqyhfIVjqR4yTrpWewe4JHfIRYrcM/4HvCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa866d0b5-4aeeb57c-3e1f-480b-bfe6-8280543f2dd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fca81c11d4a166f790fde499039e25d6e78fd66624b83bbbd0166c769aa7347
Date: Sun, 20 Mar 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647797784
