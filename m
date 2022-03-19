Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7077B7B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647726084;
	h=To:Subject:From:Message-Id:Date;
	bh=3cMBxqDjwv98AWfPAS1daHu/KXQfuK2TSzJkQ5hsuYQ=;
	b=GiySIaQoXPYFBqXvPT0aYtESrPKMS6nKEkMkkU2e132AXcp1KNjm57/Ft4ft7lLJ
	jYZuXXT4LGjhlxv7tU9qWRrawVsJOUdjHIu/ft9sKxwZPaGPL2bObYtKfI+++JCWgpR
	xlMx3623HNuMa6/WwlwGLTStRp8BOdZdeq0cgRro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647726084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3cMBxqDjwv98AWfPAS1daHu/KXQfuK2TSzJkQ5hsuYQ=;
	b=Lt7xZjmEQNxCJTrh3pB4EKS1+JgPIdDiogy9IU5CsdfrGBvVhlDtGh8xxBbU2A6y
	0oLqdhaFxNI9RISHXLR239IOIIY+VX55KcuFKJt+3J0yVgEmBbG1HKBwnxN38J//sE2
	lNeTLepFGIJ3d7UlkAYoIiILf9oWGx+HqemxnGvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa420c2b2-1c014dd4-195e-4d45-8591-7d059d70edce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6e91ca77a37d0587dee5b87db97949ed9330f8d45921f747887d71aa26d8e6d
Date: Sat, 19 Mar 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647726084
