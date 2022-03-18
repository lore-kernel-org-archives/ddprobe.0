Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC734C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647615985;
	h=To:Subject:From:Message-Id:Date;
	bh=aUDiU+0LTtqpwReuT7vqXBXVJpwBcFeoQ07JFsyVujE=;
	b=erAwbRN33y5JgHAYRcJxu1f8/r6yDfAyC6Z0WlnWX280dLXp05zvNpGtmvqU4T2B
	goGQLxllTnmA66kITvzLLdjVh3LhpG9LQatAdn03CHZxhoZO+DT3l9UiALbEnuwETAy
	xZZu5WKR4vm7ixx+dXGNX/MqJ/7ByGBkrLLVQ8dc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647615985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aUDiU+0LTtqpwReuT7vqXBXVJpwBcFeoQ07JFsyVujE=;
	b=PC1dGz48WSnYLZuwYGzUpzo2yQ+RkaLdpVXaut9AnJsm2hHm3xbRNeL15EfujJW8
	xDAU1apF3zJnH+I8a0jBtewA8xwaXgb63LG9j5fPlCBJ9HxBsUP60jlaLhZNnFynk4T
	1tIdACKUrWkd+ERpQvDGtVqjsdbZkD57MXmnmPoM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d90c49d-49d9d50c-4644-4ded-8830-6b4b73438c19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d12999cf27580f9d44d805e6c82e006f64f7911f808911bd259d05e92d323ee6
Date: Fri, 18 Mar 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647615984
