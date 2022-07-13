Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2774F6AC0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 23:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657756612;
	h=To:Subject:From:Message-Id:Date;
	bh=PDpfrUosLK2YgINbOT1HjWtoMZ7Mrr9H5x+WcVUfSE4=;
	b=H5faAuiqgbjgKK8kDAsANGPDhtLErFEYGH7lFOFIu1imq2vy8/URl8I3sr3ePlwt
	wznOemX5iPIQrW6w5NrF9d4n+cWQEkwPLnq3E56fl3VeF3QPv+/ecTIHFFu7IQKZHsC
	HxvRfE+2OcHInCJrzkMiFP5SoZUUUSPQ1ryTCQ6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657756612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PDpfrUosLK2YgINbOT1HjWtoMZ7Mrr9H5x+WcVUfSE4=;
	b=DQnrHyWNKbZlx4SoXU+uUCPVx8EyybdezHCJcDB9rH8mYxaQsA/+t7UnxzkrjvmR
	guXRk50pMwmEchA2Bf0AixeGk8DAhBbHt4PeprdozR5zESyfy7mB2qGg5ueL7Z3ETW3
	vhd0uu5Xt4JnP6tOI4LVuSDaKWssG29fqNGHIUk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9fe772f-194578db-3ff0-4b5d-87ff-e6294f8967cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: caab4145cfd4ad24eff6af7b946c3bb6ffd2276460b274193523a0d77d7fbe83
Date: Wed, 13 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657756612
