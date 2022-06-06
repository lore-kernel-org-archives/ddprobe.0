Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209E346B6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 09:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654506059;
	h=To:Subject:From:Message-Id:Date;
	bh=CzC+MAMXy8x/u0j1H+M1i+9VH8eRTLKPpsUd9Zcp9tY=;
	b=Zt7FN9TfgEc/rZn4OHNIb7XEsF8xVoprA58U6QzWohCRylY+gPqRgWKm6ttabesJ
	FZBY1WV5dFb7Rco2O1Lr0kOGcbuQN+oGU8KVGlEBqBgLOrUM1N2bs1wUD6ug9pHx8ZR
	Cr8vwVcVXcy3XTleIVCIDKDBnU7c9KqMIipDKxRk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654506059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CzC+MAMXy8x/u0j1H+M1i+9VH8eRTLKPpsUd9Zcp9tY=;
	b=Bh5EZAje5TP7d0PKqlQlKE7FbzTftri1Ut5mlLpss+9pivEITQh0jV9st4Ck3pac
	qSwgvj+B8dQ77jzrYF5oF6SoB8pVKTbMvDlcAptkxQW16cza9eC6yhJD26piS2tKRsu
	PAjvVNceSfqy672H9gJPoBHodXm2a7XRe3WZogCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181383ef5ec-d892ee3b-2b97-4260-81b1-a086ffb7b062-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 671ce14959e96d0fc8e7c4a232d4c8f5fac984bf1b7950aa2ae23182753cfd2c
Date: Mon, 6 Jun 2022 09:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654506059
