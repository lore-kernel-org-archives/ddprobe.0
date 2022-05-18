Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196EF1852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 03:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652844059;
	h=To:Subject:From:Message-Id:Date;
	bh=YL5ZKk0crWvpeamOFnAIk/iB8nuGqp5X+ZIuwoHAWHM=;
	b=dc+8fAbYppU5nqgS3MrqrUrhkaGWR2OqpJDORFl4e8Wriwlg24eYHUa6tT1XNQLJ
	FoFz9Wpqo2U2zi8OifW7HXS+2IYbd7tq+apo/jnDG9AjxmMvGoK8nwSIbPt93YfOBfq
	tTBw6tY/+fdn96pb2PJbAExOhr1NUQ0zSpHZORPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652844059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YL5ZKk0crWvpeamOFnAIk/iB8nuGqp5X+ZIuwoHAWHM=;
	b=RtRB8/reZt2J4DbeahjyVF9+zTGqsi8KUi2N88G5u4ACdlF9t7frqOeU44HsnZzS
	5C1a3dY+rc/eAPdGZImeWH9yZmZHjsP7H0AYVjWI7ieHxixzZX4sw4EbmPGdMstcX3z
	Vr0X4Uw/yr1G4lJQW/pn1hFDF4A4Q654J0vN+8YY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d52edaff-01724632-3fe1-4b61-8f7d-2fceb754dd44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9004975000e1169adc4f630f5b6b9b602003093e884dad50672f514e8c2457d
Date: Wed, 18 May 2022 03:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652844059
