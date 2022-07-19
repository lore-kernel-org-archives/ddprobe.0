Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2104910FA
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658211412;
	h=To:Subject:From:Message-Id:Date;
	bh=oNooaB35hpkLxzjavjYpBGyd5t5Ri7uzId1Nn6JBmog=;
	b=ZSpR6qlfBrEInPRkyl2uxnVWQ4JzaC2HeE5N0/n0sHZ19i3+58OkFnw6pzsg1TiA
	0WXS2LrLmsetV8wpGjdt1inPWn7ugRQUcrvbV8Fl//8TqJqgopfhSGsCVXgej2VPY+Y
	PaJ73rh+qiIXqbcW3T0lmn+blE7yVMkSH7i9cdaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658211412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oNooaB35hpkLxzjavjYpBGyd5t5Ri7uzId1Nn6JBmog=;
	b=Z/Kjxvg1tm570udtEM9aiZf8nfE8Alt5sQfdLamRIUjWlnToRcHjqcNsl39xD08A
	C7JAF6kWL2Mu7DeuADrAqloRET9z/ho7OLSr3SUk+vG6g42rQx5I8bojQ4xl9O7mTK+
	ESiS+DnGNfmEV3YxqcE/F/W1gn2reGrs3b5Jy7l4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182151a296f-a2dcd3f9-0269-421e-b6c9-b692f3881699-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96f4483241c5566e93b41c145466a568824f1dab9784aa708b0548f8ce3d0c6d
Date: Tue, 19 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658211412
