Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA3C15A7
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 02:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652235479;
	h=To:Subject:From:Message-Id:Date;
	bh=YHjxPctUlxnQP0i/Kr87+8sKsZv4Hq3rjKB8i5oRu5A=;
	b=FaQ8XTiu2ARE4ZDuweQ0WMWbtImGE8VuoITtW8AfIK+FiRc0VWF/aVZSxv/8MTuf
	yUR/c1+Vhsm2ODBRN64QITN5Vlkqyz8EIFMIkOFn9lWaXoWk7wfZzLKxhP1qNRhZSiI
	3mWUfSv60QXYMsARQI+wg35I7JrGadR9yBuK7nxg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652235479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YHjxPctUlxnQP0i/Kr87+8sKsZv4Hq3rjKB8i5oRu5A=;
	b=ZiSRTeq6MWxHJVIH6ob3uzgvrnEVYtMRaT2CE8ruV2y3sYQD8j34r1zSux9TMcxl
	Sg63GgLhS8HzpparxDt5ZfZl5s79sKUNrSzzlOeYQk4svtlWptUnbxd1m0x5Vqx7Gh3
	cyryJB/IVNqDHQ1CfE1oQkibYXxEpRx0Jwk726uM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b0e8a905-7a70f685-dd9d-452e-b4e1-162564f24c76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e33a3a59f528601d350a98600e978c61601cd0d112384cad0507519f49daa92
Date: Wed, 11 May 2022 02:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652235479
