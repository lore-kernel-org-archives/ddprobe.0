Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A03EC6AA6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 20:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655410740;
	h=To:Subject:From:Message-Id:Date;
	bh=XQfZ3yGzSLzxM3zmHaDQT+XVPzh89knXSIQ0fsXJFFw=;
	b=lCHUumZ9TDoL5y2yKIaHKiGOWOkMg6G5i/0vn4L2SekgcNoGw3+SzVDralk5bi+5
	Mpf8+hDTiagz+BZoCY3ZQ6CqCMGV2/OVzWb1YtbOWyhyqNfIpFERBb6roddlRIuTzYL
	vQ90sYh4t4oaELGeSSwLgtmLgd4WVK5z4BapjCKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655410740;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XQfZ3yGzSLzxM3zmHaDQT+XVPzh89knXSIQ0fsXJFFw=;
	b=EfCYptdxsd7D5MXb1df1AL4urx6E6QJqEfwAh0uvCyZmbUYPggUTPudz4tBSxgVN
	yMMBwA7KCvUqBTV6eEWwmxekqx4RNYrOLfAnZpNBXmNRM/QPqUeF1rxafkdfjCjzwgW
	VLtaQ8ehfGQfhU3WzdJk8CZlraTU9fo21t5GVAaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816e2b4813-09ce3567-ed05-4b81-8451-9e83d343da04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a7a6fc5f2edde3c17926e20bc62e61f8005ded2dd3f807252884aafe9561c48
Date: Thu, 16 Jun 2022 20:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655410739
