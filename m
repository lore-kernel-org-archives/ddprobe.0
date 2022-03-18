Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A07CD48B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647600385;
	h=To:Subject:From:Message-Id:Date;
	bh=1QfEWQ7r13lIakW4dSvooZ3hpdVIjDrVOG1LIIiYk6Y=;
	b=LADXZvh77sdp5/5YGyMZJU7QJcI9QgrdoMi2NbaelkWC7o+xd7BZZEvlvw40wDSr
	jJ8yvF4D9kD0JQ3a5efPOcjx6xU0sqwr4bVHzKy+YVeLBXTmSuWi0mOng6LgkMEI1Jo
	q7yUrD6KdUqEhMTcYkbPyYo7puOmiblETEahdm5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647600385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1QfEWQ7r13lIakW4dSvooZ3hpdVIjDrVOG1LIIiYk6Y=;
	b=G4XCPfqY+CRmg8dudsJo1+Z4Juk2EMc+/ACvNjuHMvEJiZb31G5ExYca4FIV4EdS
	efDKjZqpFG9b74pOmP2moIxKetxLul/A63ZAe9OudYJVFC6SRvJ69JuqqZ1AXfz3PQh
	CfNHHft3UgIpWcuJ9NWNtMulv3tGo8plLqvJlVlk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ca2badf-bd93b86c-dd9f-4b37-9732-284b147cae69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71e91315672bf0f28e61a4ed08c77ba31ce91ccaafe4ec6a59898d3dae608fd5
Date: Fri, 18 Mar 2022 10:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647600384
