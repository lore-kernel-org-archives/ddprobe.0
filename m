Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2859A7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 20:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651003318;
	h=To:Subject:From:Message-Id:Date;
	bh=XByCZ3dmJyEwFHzjP31WsDww9jQX2yE0f7Stgu5jqnY=;
	b=Ls5LGDO9+hdf8Eb03oPGYyu5RoKmXoitfQWa+mk5932uAtEc6fMnngOiRFQLSSu5
	9PQmgwD1qAnOSECZobaNL/8HoDgaj9p0XN4EhQbXAuEslvRNqhbTwa4RcC0TB26uJfo
	0eDViQD2be34/EKmp1dZNskGfRXerXyCRza/tOIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651003318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XByCZ3dmJyEwFHzjP31WsDww9jQX2yE0f7Stgu5jqnY=;
	b=MS8BrMlYSE5jqCpb6P4kF5xk1UM/9u/8F4Kzfe4r6MzeWyT0fBYxZXkZK/fyNdUG
	zzD1xGBjAD9tHgD6CLULhQvNiGfGWj0/p4oLzSj1iamtPouiZZPvG8J3p2TCmGaHrhD
	KojXmwqqw9JWr9lmxYuR1zzHWry4DjjKNpaGdcBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018067776008-46462b74-ab71-4221-909b-efb3710f4ae7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cdfa502889084c84b9d9b4452775bace197fa8c20e71af36bd88f965d071b7c
Date: Tue, 26 Apr 2022 20:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651003318
