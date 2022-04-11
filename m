Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B7E7B
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 00:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649636638;
	h=To:Subject:From:Message-Id:Date;
	bh=vCsGJTjTZSnE6DjjUHuEXu2lQJ/o92TGNfBBLVdOciA=;
	b=Lq9/8A2IFVOybvG4BAzhi3XCKx7A1TtUhT0e23n239OfusmbsruXwmQdQ1K722qh
	dyMbTWz0ruqUGoWorja1b4VABsGGRhIQNcVLLQbzwhU3eEP9twC9EsuxBl2sW7gqhlD
	0HFXS7q4aSfIyKPx8LmTKAv0UpgZ+Xd8ldbmWcrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649636638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vCsGJTjTZSnE6DjjUHuEXu2lQJ/o92TGNfBBLVdOciA=;
	b=RXjzog9ZHcEzFdWY8fg44smmzLqP6XAJt14jSmVmvaTxi5z7SNmgyVx+wc/paXJ3
	fRuNNs89XvUmuOEDcJau8VRk47gcXF6ygHyew+XnYmPwbCHfYNksCeDswFkKp7gOqwU
	Ocg3xOtRsBYYSYS3XOD8K8JDzIfqvVBr/eCMIGcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018016017e7e-cbf85fd3-98e6-494d-b10d-c0c8c5b5acb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca64a4b9cf07e7fe79eeac3cd87e76b5ffa5a0153ce0fa0fd3aca688b3bcd189
Date: Mon, 11 Apr 2022 00:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649636638
