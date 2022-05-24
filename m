Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7927C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 06:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653372839;
	h=To:Subject:From:Message-Id:Date;
	bh=8Bv6wxfI03KEILfoAjm/ueGUaDZZ5fcMUirROo6JCEE=;
	b=hrshLaM8Q2fNCj4ecZE7I2W20Ptd6uwhiOF+x8SzeKsJU94wNETmkiz0Q2ez2ESo
	GSiArbl1gp8t61U8CUgEDoUUHQQtTwpLFP2V3wi4Xr+yoPiQOHuijnDhuuPXNuQdguT
	m6P4UM3oOoNcnRmrf478hXuo0+/Ph1/vmib0Peow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653372839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Bv6wxfI03KEILfoAjm/ueGUaDZZ5fcMUirROo6JCEE=;
	b=CPYyHnis2Mc3wBkScj41wDHLnm4ferI9yUp7EObGzghO3s8Ul4XaN/LW2+BpppDq
	QJA0YyRUmyHjFfDZG2BA06jsG0X4cEsRpwFtFs6oTQwGEQx2R3HAmw2HqfHKcJE5Jq5
	cf5kF/3f8+cHt5tkJbVmOZQ+Xiw2bZMswnu9kuok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f4b365f9-2be32c9a-cdf7-432d-b7dd-53750c7d4180-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52e59f3c99b3d601259ec9504d37966eecb2f4b2f2f2feacb0258ab873412e4f
Date: Tue, 24 May 2022 06:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653372839
