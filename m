Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDB02915
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 15:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648307038;
	h=To:Subject:From:Message-Id:Date;
	bh=XkLwbe4nDPMgpi0waGdvePnebgFsrH3U3ZQTYAtFdXY=;
	b=QjobNz7/4LdzXtXD1q6wcF42Y6/5uRje8m0yZZGm1MPSnX5+utaYKQ+wKkvEtcNs
	zqK+8sQjgxRE2x8fMjzo5WSt62GrZOZpn9Vb1ni7ZKmcdgiOaJH9nzxJp2T/ld8grLp
	Bkt+/6YCJKoBN66Y5Upc3yMEJHS67wUaowDD8jTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648307038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XkLwbe4nDPMgpi0waGdvePnebgFsrH3U3ZQTYAtFdXY=;
	b=QU8geE8X4nxzIeUSY0yzwLEpqR0R6sVaqG6kPVKynh11MZkCJwmyDBqIB+jeJfbL
	+wR1Xrt5aLppBlrQX0wMpugwnceY0ly2Xp3xfcjcQ3xa+12hrY3wCiGVMiJsYtdStCu
	vJFYOaY9zFBoSOwRBaGPd9TPUnPZA7hj/ZWWR7Xc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc6c1688c-33118df4-b5bf-48fe-bc64-cfeb72fcadee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4baa0c822eecdaa9a5871ca35391effd718be0cff0cf41cb6ff37ca04fea2737
Date: Sat, 26 Mar 2022 15:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648307038
