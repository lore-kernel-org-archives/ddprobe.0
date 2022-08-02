Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D985D7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659406853;
	h=To:Subject:From:Message-Id:Date;
	bh=zpGxBFkXmJ+66KlfBMhJxcd59sHSv9ZN6FFY2IvhHcg=;
	b=dXupaKo/9jfg1kXO1TP9VXEE6RZTHVTQJO1bvrv0zFV3yJG472JDWgk6kG/GCEbt
	8bLbO/DxV2AKAqBBcJ5VdHb3lUW4F8yIUnvlEJPjiwjT6feVm1AiPPG8MahjvPjJC8q
	Va6hWLfLVfO234vjN9QQq9cDE/bQyvJx0tl9OwFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659406853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zpGxBFkXmJ+66KlfBMhJxcd59sHSv9ZN6FFY2IvhHcg=;
	b=G+7gj6JIWqCHEYdplGZHTEh5+SJ1qvaNYh902WhLbOq3PAfcA/WCBVC4wTCxd7fO
	S/am6xnqa9zYFiuR+xFo66OGDdigleYNxipL93gVWoMRAR5j9NOKlhaLbGM/5m0CDkh
	HYUkAPkuCfOesTxvMHCCEZVQFhksEYKpnOgYwt2M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c5b21fd-046805f3-bee9-41a6-97df-8ba0f4176a52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62836e46d8ceb37665c7d7516ccdb933e2f0096af5bcb84bc766da42c95cbf80
Date: Tue, 2 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659406852
