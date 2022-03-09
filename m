Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DED848C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646847684;
	h=To:Subject:From:Message-Id:Date;
	bh=8NA6fQ9pTpy6nBXbVlz/Xi6MosEC7BB7/AlPm2N/E7U=;
	b=ViH06oGQlEJL9G/NHfEqrKZcIyAm6aRBhkFJ0r0L4oNtp2r8k0e3CJ84amHQTQhY
	5WyQ7Igk7QR2fNy4gL034T5Qg58+hZq8RbavvBuzYzQD+opODQklI6igElUJT6hSbIA
	w4r/CfjeVfvAVgwnyFQzSuXbRYKhaWncD/c8v1ng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646847684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8NA6fQ9pTpy6nBXbVlz/Xi6MosEC7BB7/AlPm2N/E7U=;
	b=XdBLlKkJlt5aXNc5eH+W/f9WBS5SvtmZSeLCjTa4Rt3pXlOWscHdvVmtoPXM5RkC
	dfnhPHqCuxNpWC0L24QkdGJSxNh9ffQbhx+tNq/RwFcObs+RlpvV1VwmTT8NGJAhSye
	6vlcvgt47ScbSD/PIgKDn+k+Pl4zCLkktYn9vqzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6fc57085-9dac806c-0492-471b-8d5a-0803d15868d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b711614fb5bb0f5a299a38d06882368cd1e3a57fa093cf9de8e4232efa0a727b
Date: Wed, 9 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646847684
