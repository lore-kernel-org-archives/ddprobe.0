Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A931E1B73
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647270684;
	h=To:Subject:From:Message-Id:Date;
	bh=KkCk6ejIdC3ss9ZUu0zeWpHwPbbhptnP2yE4LcEO5LQ=;
	b=CzhBv3wcZ4Y7COqS9lQVdFpFRiRNycrW/qS8PJXVIFMJR4uCSHV2pt/XHqyhiFlL
	5GR514AMTkSeE6AIsGuR1YZI/MQSfZ3A8KovZS2xrYmfNufm2IEFD6qGdAmxr+3eYQg
	9YMIbBCnNhM/ExXdYBQDW5M8RL9TTLc4Ybe5qtNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647270684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KkCk6ejIdC3ss9ZUu0zeWpHwPbbhptnP2yE4LcEO5LQ=;
	b=Bjw4xNjwdWjyp3bTrQ35FPFYiXfPfqcT+i7AO7v/hocyB7hsV3msT9pl1QfvuNxd
	ismwrUkoqueudGdPR72R+uBbbvAg1ILhfIdIevfoDX7uXGCfuuLSGbTOUO5Pxmgdpux
	9jhst3vyR1xsubNriZgsrBlueGdp3OiiOv8ZOb1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88fbe856-c13fb88f-1272-4802-a905-54e652b6ca52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: becfa9af4e5987efd23a4d2032bb24095cc98803182a395973ec1eb246f6c322
Date: Mon, 14 Mar 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647270684
