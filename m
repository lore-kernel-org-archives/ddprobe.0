Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74D67B
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647752784;
	h=To:Subject:From:Message-Id:Date;
	bh=34Sxp/PDx534+hv4SqAJBjfKyFBStL2liz2RRLOPVnk=;
	b=QK4tJ8wIsqtPr7KWYZMXlVp055mpdshD9yK+ISfAtnVo9jyvKzt6jnaNp+ZmHjsN
	rwKy+T5ZahKWMGo3LYdzTIDhHKYJ6mGs0yxonBWRPQq/zVZgA1eeCnzQHoqW4DdBIiv
	4E/rrjn+GuQjTGVr0FkZOYgLQSg6hnlzRvdbBoCE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647752784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=34Sxp/PDx534+hv4SqAJBjfKyFBStL2liz2RRLOPVnk=;
	b=i/3DKdq5zpjylswNYd7s2AxeL0rj1xfH05YpFB7YUkQx+VnqyFqXyR0e8W55E6Sj
	Ka0k0xLvIk5/Rq5NYUCwqPBAKdBuj3KWhhMQ8bk74q65aYolYV3E3uXudlotzOgu0hX
	i9z8ZXwLmXQuLeBV6eZBxrWw6ljaI+C3PORpuKG4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5b82b6a-167fb21d-8369-420f-899f-a23de9e98faf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72023d8a295593f3f87aeadc0d8d9e22e9d239d72ea504220bbc950a8f75b7c5
Date: Sun, 20 Mar 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647752784
