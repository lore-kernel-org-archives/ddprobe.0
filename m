Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FA27B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 19:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651260838;
	h=To:Subject:From:Message-Id:Date;
	bh=Ya0AyfHpXcMt/sisXBo0YNSYvcFM94V2y9kiVomM6Ps=;
	b=CJ9ArfSjRd10cGJ6qnu/bVsfHquqW6aDuhaSe7Sk7wKBM0giGO7dr38dM2fc/LWk
	ZEf1P8QLuk8xty5n+u3zEOgrBFCGpHcvl2q+frXS3/sV2lTxG3UZ5Ykb3SK67imY4rv
	q35yvdxcUXnVtnbet4l4eRQqqr/zTbY6+xU9OIcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651260838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ya0AyfHpXcMt/sisXBo0YNSYvcFM94V2y9kiVomM6Ps=;
	b=S+Sm2qfby74JQuLQ+fYmdgnQQ/tn8N9O1IXXgSzkdVCZo5yvYK+5lorwHvYQftVA
	uy8JTQdyI2UaIzBxDblYZ5/M8csMAG9sUcwcfN95gUo3pgnEbvz1QNFHwdf17TscM8W
	/m2wYVwnhVE8x342kJezfB6kp368nsyzjRnloz4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018076d0d15f-1e77707e-25ef-41c2-9c86-996a1b2f1a37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9bb815a350ff26a92ca717cd8d1ccbc954f9e07ce1527de4fd29c69de53ed84
Date: Fri, 29 Apr 2022 19:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651260838
