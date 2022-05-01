Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724142F3E
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 21:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651439698;
	h=To:Subject:From:Message-Id:Date;
	bh=T+YnRU7u76pM5Rm3oaD+DdmBwK+Jdq/eoWZzZmOg8Yg=;
	b=T7xCaWf/pEwtph5nkhZB2b/uhprhdN6W1MheriXi0j0GKzbBK4A3QJ/QOwmd3tzq
	sN8Vfgy1VN9CEVq8Qcype+em10ifONBP0TrHpIJMaO+lR5EGQ6CjSjnKrQ1rhlbehF/
	7QNk/ekH/Hs27yUSOVaqBbZEfe9qEud6Y8lXgpa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651439698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T+YnRU7u76pM5Rm3oaD+DdmBwK+Jdq/eoWZzZmOg8Yg=;
	b=b0x4ZJlcr+RnWxHOPM6L+7kQvMGy0Ghffl1Aq9nuXs2R4XyOW6QErwZlWOk8NhnJ
	3Y7/k9crXxTw1hPS+DitK2ucTD7wW6c2evFl+EHMCQqZE3dHZ0rvMcOJNoXovGrw25b
	IwN1CYQJeh+TqxLwLSI7tico0j0J6SNg0wjVXbqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180817a0158-f38231ea-c075-43ad-a730-d9e5bda3c8ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3654caef8274044c2fb06bbab592f247568374ca6d7a9da5b2b8674dde2796d
Date: Sun, 1 May 2022 21:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651439698
