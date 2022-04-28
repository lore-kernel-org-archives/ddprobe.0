Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAD3A20
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 00:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651107538;
	h=To:Subject:From:Message-Id:Date;
	bh=DenzhOzEgQzGX/cwYtF9tL8sQlgtfSAkpwTHGe8qTUc=;
	b=O8bHxInItSreW6e1mpWsJ8mb/6PS5MU9WU2Wud3kzHIvdYxP7bppVLyTHF97S8DT
	EozHcvc+uLpjDe3sb+y3XwX57mgTrCJKftbf8ffug6lPQjlRkX4L8sX9y1PeSvX6oTJ
	8yANzFJiRDWkCnqOcpFx9Oab18iu44vGq3MxwEo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651107538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DenzhOzEgQzGX/cwYtF9tL8sQlgtfSAkpwTHGe8qTUc=;
	b=jLDS6DeReJ1/unqB4zJzaU3a7VPl+2kZicpB2/OvmT8SuSkBj50l6z/u7R68kf75
	2Gs8tQH/tNjBnxGQlc2MjPpUveagnmfD6ySNPK2drvEqK5H0CFVgoS0QTH46rQn5JL/
	w4UpEqmZcyiLHNLUJcIf/AtRvi1ymQz5ylFac+ZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806dada5cc-ba5d1afe-6327-4d4b-834e-fddbc142be21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a3dafe7f2468640e5b614fee27a3f1d2183ae014d7ca79a8e52cdd84172b3d5
Date: Thu, 28 Apr 2022 00:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651107538
