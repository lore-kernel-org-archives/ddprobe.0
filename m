Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBBB1B60
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 08:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648109038;
	h=To:Subject:From:Message-Id:Date;
	bh=3CujW85E3TZ3hogDBB0r/u/MofJQN/MjLh7dA1X6/VI=;
	b=Qf5OddKx8C9g8m4F9ateCV5lLBHZyJEzqV0fnXqSf/U5SBPEFM2v7BHrpaeVbEnV
	gzupv3gk0RePUFTQyDmc1Gk0hpkE93reK7kTAWLaH9zsfxGuPjW2+K8OeTzxXLfJ4wA
	53qlQ703xx9J2s3W+4vVA94EaHIEqPoJD5FXZhx8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648109038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3CujW85E3TZ3hogDBB0r/u/MofJQN/MjLh7dA1X6/VI=;
	b=NX/Pd02zGRsLqqIkQ/AYLcKpLa0yYSPX9o0DXqV58hnPZL1UgfBSKEaMIee8MORv
	lr6xhL6z7R5rW40b4TAGhOQUfQ/wPOkyX92zXLbXLod0xo/A/L82/aqFz9ngE5cWGa8
	eIkvIRIN63GP1FDWwMojGhNvbd5+3kTnhCjZD7jA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbaf42af4-97a8db8c-16d2-46f5-9ebc-48d50c4a13ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a2a00ffa88953e6760c75e16b12195f92af76bc2e52f3f4e36dd7e44dea466e
Date: Thu, 24 Mar 2022 08:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648109038
