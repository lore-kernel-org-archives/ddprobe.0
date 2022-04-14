Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A2F15A7
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 03:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649907418;
	h=To:Subject:From:Message-Id:Date;
	bh=vVyz92POjt9wkiAokkNkYCqX/37JWRE74mPWUfcEexg=;
	b=TpR3YFWODWBUFKY1/mXkW0kUo47CObkI838JPm92j7wJ8hvlA3XdAjOjbu+QuuNd
	4ZG6P0D38vCX+P8Bbfb7HBlZunp5LrEzwA/PruhLIYJITePaIoIacCAu0bE3REnDDVg
	1ClUIy6ALT3g6HYWzJUgSiA+1GGXI7JBmlXYgbA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649907418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vVyz92POjt9wkiAokkNkYCqX/37JWRE74mPWUfcEexg=;
	b=F8xmInqGaM/7i55N7jBDh9I9iMSxuMCDMsVuWqro1PT4tv9xvkPyCwB+UTOv5O0s
	hWb7V/WtfjRxM6UE7Y97ApkALABBeM9Z01ESNUpa4Jx+Y8KxodnJj8Nf4CzlM+j+7eA
	o3sJKRwTFCObpSjKTrx2bUrNdTeI2nIoVTfy0xG8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180262544c0-715b3e75-59b6-4fe1-80cb-ce8d08dade24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27ef8add8d4cf31b5c9fe97ae1e26b0d68eee38326fcc01428e9f38bdc1e9011
Date: Thu, 14 Apr 2022 03:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649907418
