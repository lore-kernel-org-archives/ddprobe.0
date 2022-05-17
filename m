Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA47139C
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 14:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652798879;
	h=To:Subject:From:Message-Id:Date;
	bh=bFZXoGPRojN1J60lFI3NnvRqXVtULcZoD5PLuBCAUuM=;
	b=L8GihyzYhxV79FQ1gVf0qYAKzdMZqv5b3FcpvuzBKTa59TFls/IEsMF/KY0nZoKF
	20FV74JwJXk8OLaCzJ/QyUgF+lu8YzgI+HJiwERaXxO6TrpGiU6MCAO7Csr69BV8EX9
	7rJYWXRBhNKbYk4k5ni+8mgbijqzAFBhLVaVRTeU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652798879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bFZXoGPRojN1J60lFI3NnvRqXVtULcZoD5PLuBCAUuM=;
	b=gDedzD43znNy0htSg1IinUUx5NIdpEjIj8lGswdlVIhCfUWeFz8shF6Hq742HePF
	D5RMnTF9demj9773R3/sDrIgJ9wvdh7YI/NtmbDy6h0bQc8PscWuDj6P6OVU8ayv5I5
	S3bfsNoiNqoJeIbAlZbzZnXa5n80eX9pQpEPNL/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d27d7686-9ac1535e-c3c2-4684-b31e-f8eb7540c6fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57c5bc41ab0758bfc254eaecb801936dacf520a8e75b060344fb5b7f097b7c57
Date: Tue, 17 May 2022 14:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652798879
