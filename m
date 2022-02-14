Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C694AA2C
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 17:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644860422;
	h=To:Subject:From:Message-Id:Date;
	bh=ftKe8BJRL7cZzTsFCUgUqPnlbZdN1JcmYSfwuG3SYZE=;
	b=lLwcIeGJ8gJlEdV8l0z1MqbD5ZanY4jUzX4wufqucVRLYchGV56IhBLPX28vToBP
	fFlNrIzyZM7pUAf7hVBSBzz0yGGcAXxh4MCFVfRDMJj9FyGxFJe1F4ocRUfLjIEKL9h
	7dEsJxhxP1y2QcVNpM7JoKNEF93nQlhUjoxzLY5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644860422;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ftKe8BJRL7cZzTsFCUgUqPnlbZdN1JcmYSfwuG3SYZE=;
	b=ZT8xlfgpI4AQnac/U/2ab5/3KxtABJxGfMNvvih/QjfTqcc2bzOnaQUh3R53a/+g
	A54gWRpFJ7Is/3UpxEGJrXZ3V9fn63TK0/ZGb6RevoHmgpHY83SrQ3Ng2MfzilRpr+3
	11dg0j5z6qFFFGzA4wWNcODLJ9P/36PapW7kl9Ow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef952363d-7e991cd0-f0b2-403d-81ab-d24f42cb9055-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e25271cf6b84404e87414c6781d1a0caf9a8c024878ad394a94664ec5221e115
Date: Mon, 14 Feb 2022 17:40:21 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644860421
